.class final Lorg/json/me/JSONObject$Null;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json/me/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Null"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/json/me/JSONObject$Null;-><init>()V

    return-void
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 106
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "null"

    return-object v0
.end method
