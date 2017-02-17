.class public Lcom/mwr/jdiesel/api/sessions/Session;
.super Lcom/mwr/jdiesel/connection/AbstractSession;
.source "Session.java"


# instance fields
.field private connector:Lcom/mwr/jdiesel/api/links/Link;

.field public object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

.field private reflection_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/links/Link;)V
    .locals 1
    .param p1, "connector"    # Lcom/mwr/jdiesel/api/links/Link;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractSession;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->connector:Lcom/mwr/jdiesel/api/links/Link;

    .line 16
    new-instance v0, Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-direct {v0}, Lcom/mwr/jdiesel/reflection/ObjectStore;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    .line 17
    new-instance v0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;

    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;-><init>(Lcom/mwr/jdiesel/api/sessions/Session;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->reflection_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;

    .line 22
    iput-object p1, p0, Lcom/mwr/jdiesel/api/sessions/Session;->connector:Lcom/mwr/jdiesel/api/links/Link;

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/connection/AbstractSession;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->connector:Lcom/mwr/jdiesel/api/links/Link;

    .line 16
    new-instance v0, Lcom/mwr/jdiesel/reflection/ObjectStore;

    invoke-direct {v0}, Lcom/mwr/jdiesel/reflection/ObjectStore;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->object_store:Lcom/mwr/jdiesel/reflection/ObjectStore;

    .line 17
    new-instance v0, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;

    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/api/handlers/ReflectionMessageHandler;-><init>(Lcom/mwr/jdiesel/api/sessions/Session;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->reflection_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;

    .line 27
    return-void
.end method

.method public static nullSession()Lcom/mwr/jdiesel/api/sessions/Session;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/mwr/jdiesel/api/sessions/Session;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/sessions/Session;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected handleMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->reflection_message_handler:Lcom/mwr/jdiesel/api/handlers/MessageHandler;

    invoke-interface {v0, p1}, Lcom/mwr/jdiesel/api/handlers/MessageHandler;->handle(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    invoke-super {p0}, Lcom/mwr/jdiesel/connection/AbstractSession;->run()V

    .line 43
    return-void
.end method

.method public send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mwr/jdiesel/api/sessions/Session;->connector:Lcom/mwr/jdiesel/api/links/Link;

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/links/Link;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 48
    return-void
.end method
