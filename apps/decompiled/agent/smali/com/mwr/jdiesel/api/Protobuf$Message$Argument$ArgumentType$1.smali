.class Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType$1;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType$1;->findValueByNumber(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 8390
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    move-result-object v0

    return-object v0
.end method
