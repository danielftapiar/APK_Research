.class final Lcl/birdie/transantiagomaster/MainActivity$34;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onComplain(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Lcl/birdie/toolkit/LatLng;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private final synthetic val$ll:Lcl/birdie/toolkit/LatLng;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$objeto:Ljava/lang/String;

.field private final synthetic val$redSocial:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

.field private final synthetic val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Ljava/lang/String;Lcl/birdie/toolkit/LatLng;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$redSocial:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$objeto:Ljava/lang/String;

    iput-object p5, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    iput-object p6, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$message:Ljava/lang/String;

    iput-object p7, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$ll:Lcl/birdie/toolkit/LatLng;

    iput-object p8, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 2848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2864
    const-string v0, "MainActivity"

    const-string v1, "error al subir foto"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const-string v1, "foto"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 2866
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2852
    move-object v13, p1

    check-cast v13, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .line 2854
    .local v13, "model":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    new-array v10, v2, [Ljava/lang/String;

    iget-object v0, v13, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    aput-object v0, v10, v1

    .line 2855
    .local v10, "urls":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    iget-object v0, v13, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    aput-object v0, v11, v1

    .line 2856
    .local v11, "idImagenes":[Ljava/lang/String;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f06014f

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 2857
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$redSocial:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$objeto:Ljava/lang/String;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    iget v4, v4, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$message:Ljava/lang/String;

    .line 2858
    iget-object v6, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$ll:Lcl/birdie/toolkit/LatLng;

    iget-wide v6, v6, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-object v8, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$ll:Lcl/birdie/toolkit/LatLng;

    iget-wide v8, v8, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-object v12, p0, Lcl/birdie/transantiagomaster/MainActivity$34;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 2857
    invoke-static/range {v0 .. v12}, Lcl/birdie/transantiagomaster/MainActivity;->access$10$57d69125(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 2859
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v1, 0x0

    iput-object v1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 2860
    return-void
.end method
