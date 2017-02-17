.class Lnet/hockeyapp/android/internal/VersionHelper$1;
.super Ljava/lang/Object;
.source "VersionHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/internal/VersionHelper;->sortVersions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/internal/VersionHelper;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/internal/VersionHelper;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lnet/hockeyapp/android/internal/VersionHelper$1;->this$0:Lnet/hockeyapp/android/internal/VersionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnet/hockeyapp/android/internal/VersionHelper$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 3
    .param p1, "object1"    # Lorg/json/JSONObject;
    .param p2, "object2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_0
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "version"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v0, v1, :cond_0

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
