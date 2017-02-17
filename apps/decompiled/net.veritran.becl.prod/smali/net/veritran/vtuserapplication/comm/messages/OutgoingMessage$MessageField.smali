.class public Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessageField"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    return v0
.end method

.method public render()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x20

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget v3, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v4, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->c:I

    if-nez v4, :cond_1

    :goto_0
    if-ge v0, v2, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget v4, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    invoke-static {v0, v6, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftCharacters(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v2, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->a:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->d:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->c:I

    return-void
.end method

.method public setValue(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->b:Ljava/lang/String;

    return-void
.end method
