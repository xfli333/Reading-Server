package reading.server

import org.springframework.dao.DataIntegrityViolationException

class FileEntityController {

    static allowedMethods = [download: "GET"]

    def download(Long id) {
        def fileEntityInstance = FileEntity.get(id)
        response.setHeader("Content-disposition", "attachment; filename=" + fileEntityInstance.fileName)
        response.setContentType("application/x-msdownload");
        def out = response.outputStream
        IOUtils.write(fileEntityInstance.data, out);
        out.close()
    }
}
