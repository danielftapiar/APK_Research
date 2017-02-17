.class public Lcom/mwr/jdiesel/api/UnexpectedMessageException;
.super Ljava/lang/RuntimeException;
.source "UnexpectedMessageException.java"


# static fields
.field private static final serialVersionUID:J = 0x203f7c0fa33974bbL


# instance fields
.field private type:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;)V
    .locals 0
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mwr/jdiesel/api/UnexpectedMessageException;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Unexpected MessageType: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mwr/jdiesel/api/UnexpectedMessageException;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
