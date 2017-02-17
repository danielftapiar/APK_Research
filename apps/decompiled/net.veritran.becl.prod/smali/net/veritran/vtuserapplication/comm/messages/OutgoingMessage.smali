.class public abstract Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;
    }
.end annotation


# static fields
.field public static final FIELD_TYPE_INTEGER:I = 0x0

.field public static final FIELD_TYPE_STRING:I = 0x1

.field public static final FIELD_TYPE_STRING_RIGHT_ALIGNED:I = 0x2


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->b:Ljava/util/Vector;

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "MSG-ID"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v6}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getMessageFormatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "PROD-ID"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "SW-VERSION"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CONF-TYPE"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CONF-VERSION"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getConfigurationVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "MSG-LEN"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CRC"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "TERM-ID"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "TYP"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v6}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "SEQ-NUM"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->incrementSequenceNumber()V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "LAST-RESP-SEQ-NUM"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getLastRespondedSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "FLAGS"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v0, v6}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "CATEGORY"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    const-string v1, "        "

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    const-string v1, " "

    const/16 v2, 0x20

    const/16 v3, 0x12

    invoke-static {v1, v2, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftCharacters(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    new-instance v1, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;-><init>(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;)V

    const-string v0, "OLDPRODUCT"

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setType(I)V

    invoke-virtual {v1, v5}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setSize(I)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getConfigurableProductId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "  "

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_1

    const-string v0, "  "

    :cond_1
    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V

    return-void
.end method


# virtual methods
.method public addBodyField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addHeaderField(Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public render()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v7, :cond_3

    if-eqz v4, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "CRC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "MSG-LEN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v1, v4

    goto :goto_1

    :cond_1
    move v0, v2

    move v1, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v1, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_2
    if-ge v3, v8, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "CRC"

    invoke-virtual {p0, v0, v3}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MSG-LEN"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setDHPublicKeyPeer(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->setDHPublicKeyPeer(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/comm/messages/OutgoingMessage$MessageField;->setValue(Ljava/lang/String;)V

    return-void
.end method
