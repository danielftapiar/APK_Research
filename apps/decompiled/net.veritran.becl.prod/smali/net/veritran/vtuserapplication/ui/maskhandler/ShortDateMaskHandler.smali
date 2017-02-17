.class public Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;
.super Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;-><init>([C)V

    return-void
.end method


# virtual methods
.method public getEnteredText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x6

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;->_enteredText:[C

    const/4 v2, 0x5

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
