package reading.server

import org.apache.commons.io.IOUtils

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
