package reading.server

class Book {
    String bookNumber
    String bookName
    String bookIconUrl;
    String detailText;
    String bookSize;
    FileEntity bookFile;
    Date dateCreated

    static constraints = {
    }
}
