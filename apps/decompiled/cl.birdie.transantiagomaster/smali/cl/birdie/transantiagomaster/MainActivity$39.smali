.class final Lcl/birdie/transantiagomaster/MainActivity$39;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onMapUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput p2, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->val$i:I

    .line 3188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 3192
    iget v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->val$i:I

    packed-switch v0, :pswitch_data_0

    .line 3215
    :goto_0
    return-void

    .line 3194
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3195
    const-string v0, "MainActivity"

    const-string v1, "onMapUpdate 0: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3197
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->actualizarDatos()V

    .line 3198
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->invalidarMapa()V

    goto :goto_0

    .line 3203
    :pswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->procesar(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 3204
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3205
    const-string v0, "MainActivity"

    const-string v1, "onMapUpdate 1/2: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3207
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 3208
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3207
    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->revisarLayers(Lcl/birdie/transantiagomaster/ITSMMapView;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 3209
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->actualizarDatos()V

    .line 3210
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-static {}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->actualizarDatos$25a2cf1e()V

    .line 3211
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$39;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->invalidarMapa()V

    goto :goto_0

    .line 3192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
