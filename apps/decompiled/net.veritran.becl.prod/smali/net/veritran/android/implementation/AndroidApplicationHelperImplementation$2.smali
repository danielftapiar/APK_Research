.class Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$2;
.super Ljava/lang/Object;
.source "AndroidApplicationHelperImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;->dial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

.field final synthetic val$phoneToDialFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    .prologue
    .line 170
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$2;->this$0:Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    iput-object p2, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$2;->val$phoneToDialFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V
    .locals 3
    .param p1, "result"    # Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    .prologue
    .line 173
    sget-object v1, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v1, :cond_1

    .line 175
    :try_start_0
    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$2;->this$0:Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    iget-object v2, p0, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation$2;->val$phoneToDialFinal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;->dialImplement(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AndroidApplicationHelperImplementation"

    const-string v2, "Dial not execute - not permissions"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v1, :cond_0

    .line 182
    const-string v1, "AndroidApplicationHelperImplementation"

    const-string v2, "Dial not execute - not permissions"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
