.class public Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;
.super Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;-><init>([C)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->showNumericPassword()Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_showInPasswords:Z

    const-string v0, "_"

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_requiredFieldString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteChar()Z
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->stopTimeOut()V

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    if-ltz v0, :cond_1

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_pattern:[C

    array-length v3, v3

    if-le v0, v3, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aput-char v7, v3, v0

    move v4, v0

    :goto_0
    if-ltz v4, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aget-char v0, v0, v4

    if-eq v0, v8, :cond_8

    move v0, v1

    move v3, v2

    :cond_3
    :goto_1
    if-nez v0, :cond_7

    sub-int v0, v4, v3

    if-gtz v0, :cond_5

    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    sub-int v5, v4, v3

    aget-char v0, v0, v5

    if-eq v0, v8, :cond_6

    move v0, v2

    :cond_4
    :goto_3
    if-nez v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    sub-int v0, v4, v3

    if-ltz v0, :cond_8

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    iget-object v5, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    sub-int v6, v4, v3

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    sub-int v3, v4, v3

    aput-char v7, v0, v3

    :cond_8
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0
.end method

.method protected getActualPositionForInsert()I
    .locals 8

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v5, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aget-char v2, v2, v0

    if-eq v2, v7, :cond_5

    move v2, v1

    move v4, v3

    :cond_0
    :goto_1
    if-nez v2, :cond_4

    add-int v2, v0, v4

    iget-object v6, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    array-length v6, v6

    if-lt v2, v6, :cond_2

    move v2, v3

    :goto_2
    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    add-int v6, v0, v4

    aget-char v2, v2, v6

    if-eq v2, v7, :cond_3

    move v2, v3

    :cond_1
    :goto_3
    if-nez v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    add-int v2, v0, v4

    iget-object v6, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    array-length v6, v6

    if-ge v2, v6, :cond_5

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    iget-object v6, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    add-int/2addr v4, v0

    aget-char v4, v6, v4

    aput-char v4, v2, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v5
.end method

.method protected patternFull()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aget-char v1, v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected putCurrentChar(C)V
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->getActualPositionForInsert()I

    move-result v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aput-char p1, v1, v0

    return-void
.end method

.method protected setNextEditablePosition()V
    .locals 3

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_pattern:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_enteredText:[C

    aget-char v1, v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;->_currentPatternPos:I

    :cond_1
    return-void
.end method
