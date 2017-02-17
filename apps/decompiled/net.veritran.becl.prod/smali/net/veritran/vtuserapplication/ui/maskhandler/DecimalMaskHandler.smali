.class public Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;
.super Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>([C)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;-><init>([C)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getClientDecimalNumberSeparator()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-char v3, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    array-length v1, p1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->a:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEnteredText()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    aget-char v3, v3, v0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "+"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->a:I

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->validate()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    aget-char v2, v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;->_enteredText:[C

    aget-char v2, v2, v1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
