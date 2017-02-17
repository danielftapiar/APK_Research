.class final Lcl/birdie/transantiagomaster/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onGetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$4;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$4;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 974
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$4;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 960
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 961
    .local v1, "lista":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/ImageModel;>;"
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    monitor-enter v3

    .line 962
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 963
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 961
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$4;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 970
    return-void

    .line 963
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .line 964
    .local v0, "img":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    .line 965
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 961
    .end local v0    # "img":Lcl/birdie/transantiagomaster/facebook/models/ImageModel;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
