.class public abstract Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/timeout/TimeoutListener;


# static fields
.field protected static final UNEDITABLE:C = '\u0006'

.field protected static final UNUSED:C = '\u0005'


# instance fields
.field protected _currentPatternPos:I

.field protected _enteredText:[C

.field protected _isPassword:Z

.field protected _pattern:[C

.field protected _requiredFieldString:Ljava/lang/String;

.field protected _showInPasswords:Z

.field private a:Lnet/veritran/vtuserapplication/timeout/Timeout;

.field private b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

.field protected showedText:Ljava/lang/String;


# direct methods
.method public constructor <init>([C)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_showInPasswords:Z

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_requiredFieldString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->showedText:Ljava/lang/String;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    iput v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_currentPatternPos:I

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    array-length v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, "X9{}*"

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    const/4 v2, 0x6

    aput-char v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    const/4 v2, 0x5

    aput-char v2, v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->setNextEditablePosition()V

    return-void
.end method


# virtual methods
.method public addChar(I)Z
    .locals 1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->stopTimeOut()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->patternFull()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;->notifyTextChanged()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->putCurrentChar(C)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->setNextEditablePosition()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->showedText:Ljava/lang/String;

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_isPassword:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_showInPasswords:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->startTimeOut()V

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;->notifyTextChanged()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract deleteChar()Z
.end method

.method public enteredTextIsEmpty()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    aget-char v2, v2, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getEnteredText()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    aget-char v2, v2, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleText()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    array-length v3, v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    aget-char v3, v3, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    aget-char v3, v3, v0

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_requiredFieldString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_isPassword:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_currentPatternPos:I

    if-ne v4, v0, :cond_3

    iget-boolean v4, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_showInPasswords:Z

    if-nez v4, :cond_4

    :cond_3
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getClientThousandNumberSeparator()Ljava/lang/String;

    move-result-object v0

    instance-of v3, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyTimedOut()V
    .locals 1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->setNextEditablePosition()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;->notifyRefreshText()V

    :cond_0
    return-void
.end method

.method protected abstract patternFull()Z
.end method

.method public patternLen()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    array-length v0, v0

    return v0
.end method

.method protected abstract putCurrentChar(C)V
.end method

.method public setDefaultText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->putCurrentChar(C)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->setNextEditablePosition()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->b:Lnet/veritran/vtuserapplication/ui/maskhandler/InputMaskListener;

    return-void
.end method

.method protected abstract setNextEditablePosition()V
.end method

.method public setPassword()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_isPassword:Z

    return-void
.end method

.method protected startTimeOut()V
    .locals 4

    new-instance v0, Lnet/veritran/vtuserapplication/timeout/Timeout;

    const-wide/16 v2, 0x514

    invoke-direct {v0, v2, v3}, Lnet/veritran/vtuserapplication/timeout/Timeout;-><init>(J)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->setListener(Lnet/veritran/vtuserapplication/timeout/TimeoutListener;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->start()V

    return-void
.end method

.method protected stopTimeOut()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->a:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    array-length v5, v0

    move v3, v1

    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    if-ge v3, v5, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    aget-char v0, v0, v3

    const/4 v6, 0x6

    if-ne v0, v6, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_enteredText:[C

    aget-char v0, v0, v3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->_pattern:[C

    aget-char v0, v0, v3

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    move v4, v0

    goto :goto_0
.end method
