.class final Lcl/birdie/transantiagomaster/maps/google/GMapView$2;
.super Ljava/lang/Object;
.source "GMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/maps/google/GMapView;->dibujarLugarMarcado()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$2;->this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$2;->this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;

    # invokes: Lcl/birdie/transantiagomaster/maps/google/GMapView;->llenarLugarMarcado()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->access$1(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V

    .line 438
    return-void
.end method
