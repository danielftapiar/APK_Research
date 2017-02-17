.class public Lcom/mwr/jdiesel/api/InvalidMessageException;
.super Ljava/lang/RuntimeException;
.source "InvalidMessageException.java"


# static fields
.field private static final serialVersionUID:J = -0x33bbbf76723aa07fL


# instance fields
.field private invalid_message:Lcom/mwr/jdiesel/api/Protobuf$Message;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "invalid_message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/InvalidMessageException;->invalid_message:Lcom/mwr/jdiesel/api/Protobuf$Message;

    .line 13
    iput-object p1, p0, Lcom/mwr/jdiesel/api/InvalidMessageException;->invalid_message:Lcom/mwr/jdiesel/api/Protobuf$Message;

    .line 14
    return-void
.end method


# virtual methods
.method public getInvalidMessage()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mwr/jdiesel/api/InvalidMessageException;->invalid_message:Lcom/mwr/jdiesel/api/Protobuf$Message;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Invalid message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mwr/jdiesel/api/InvalidMessageException;->invalid_message:Lcom/mwr/jdiesel/api/Protobuf$Message;

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
