package reading.server

class Book {
    String code
    String name
    String iconUrl;
    String detailText;
    String bookSize;
    FileEntity bookFile;
    Date dateCreated

    static constraints = {
    }
}
