.class final Lcl/birdie/transantiagomaster/maps/google/GMapView$1;
.super Ljava/lang/Object;
.source "GMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/maps/google/GMapView;->llenarUbicacion()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$1;->this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView$1;->this$0:Lcl/birdie/transantiagomaster/maps/google/GMapView;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->access$0(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V

    .line 428
    return-void
.end method
