.class Lnet/veritran/android/implementation/photo/PhotoLibrary$2;
.super Ljava/lang/Object;
.source "PhotoLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/photo/PhotoLibrary;->getPictureFromGallery(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/photo/PhotoLibrary;

.field final synthetic val$image_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/photo/PhotoLibrary;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/photo/PhotoLibrary;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->this$0:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    iput-object p2, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->val$image_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V
    .locals 3
    .param p1, "result"    # Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    .prologue
    .line 181
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->this$0:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    iget-object v1, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->val$image_name:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->this$0:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    # getter for: Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;
    invoke-static {v2}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->access$000(Lnet/veritran/android/implementation/photo/PhotoLibrary;)Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getPictureFromGalleryIntent(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;->this$0:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    # getter for: Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;
    invoke-static {v0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->access$000(Lnet/veritran/android/implementation/photo/PhotoLibrary;)Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifyError(I)V

    goto :goto_0
.end method
