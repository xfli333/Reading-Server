package reading.server



import org.junit.*
import grails.test.mixin.*

@TestFor(FileEntityController)
@Mock(FileEntity)
class FileEntityControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/fileEntity/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.fileEntityInstanceList.size() == 0
        assert model.fileEntityInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.fileEntityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.fileEntityInstance != null
        assert view == '/fileEntity/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/fileEntity/show/1'
        assert controller.flash.message != null
        assert FileEntity.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/fileEntity/list'

        populateValidParams(params)
        def fileEntity = new FileEntity(params)

        assert fileEntity.save() != null

        params.id = fileEntity.id

        def model = controller.show()

        assert model.fileEntityInstance == fileEntity
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/fileEntity/list'

        populateValidParams(params)
        def fileEntity = new FileEntity(params)

        assert fileEntity.save() != null

        params.id = fileEntity.id

        def model = controller.edit()

        assert model.fileEntityInstance == fileEntity
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/fileEntity/list'

        response.reset()

        populateValidParams(params)
        def fileEntity = new FileEntity(params)

        assert fileEntity.save() != null

        // test invalid parameters in update
        params.id = fileEntity.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/fileEntity/edit"
        assert model.fileEntityInstance != null

        fileEntity.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/fileEntity/show/$fileEntity.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        fileEntity.clearErrors()

        populateValidParams(params)
        params.id = fileEntity.id
        params.version = -1
        controller.update()

        assert view == "/fileEntity/edit"
        assert model.fileEntityInstance != null
        assert model.fileEntityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/fileEntity/list'

        response.reset()

        populateValidParams(params)
        def fileEntity = new FileEntity(params)

        assert fileEntity.save() != null
        assert FileEntity.count() == 1

        params.id = fileEntity.id

        controller.delete()

        assert FileEntity.count() == 0
        assert FileEntity.get(fileEntity.id) == null
        assert response.redirectedUrl == '/fileEntity/list'
    }
}
