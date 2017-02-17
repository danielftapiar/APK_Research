.class final Lcl/birdie/transantiagomaster/GApp$LegClickListener;
.super Ljava/lang/Object;
.source "GApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/GApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegClickListener"
.end annotation


# instance fields
.field final leg:Lcl/birdie/transantiagomaster/newobjetos/Leg;

.field final pos:I

.field final synthetic this$0:Lcl/birdie/transantiagomaster/GApp;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/GApp;Lcl/birdie/transantiagomaster/newobjetos/Leg;I)V
    .locals 0
    .param p2, "leg"    # Lcl/birdie/transantiagomaster/newobjetos/Leg;
    .param p3, "pos"    # I

    .prologue
    .line 735
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->this$0:Lcl/birdie/transantiagomaster/GApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->leg:Lcl/birdie/transantiagomaster/newobjetos/Leg;

    .line 737
    iput p3, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->pos:I

    .line 738
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 742
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->leg:Lcl/birdie/transantiagomaster/newobjetos/Leg;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->leg:Lcl/birdie/transantiagomaster/newobjetos/Leg;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 747
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->pos:I

    iput v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    .line 749
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$LegClickListener;->this$0:Lcl/birdie/transantiagomaster/GApp;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/GApp;->access$0(Lcl/birdie/transantiagomaster/GApp;)V

    .line 750
    return-void
.end method
