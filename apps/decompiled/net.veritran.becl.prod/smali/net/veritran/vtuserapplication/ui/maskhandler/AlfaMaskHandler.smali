.class public Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;
.super Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;-><init>([C)V

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_requiredFieldString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteChar()Z
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->stopTimeOut()V

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_currentPatternPos:I

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    aget-char v1, v1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    aget-char v1, v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_currentPatternPos:I

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_currentPatternPos:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_pattern:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    aput-char v3, v1, v0

    goto :goto_1
.end method

.method protected patternFull()Z
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putCurrentChar(C)V
    .locals 2

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_currentPatternPos:I

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    aput-char p1, v1, v0

    return-void
.end method

.method protected setNextEditablePosition()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    aget-char v1, v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_enteredText:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/AlfaMaskHandler;->_currentPatternPos:I

    :cond_1
    return-void
.end method
