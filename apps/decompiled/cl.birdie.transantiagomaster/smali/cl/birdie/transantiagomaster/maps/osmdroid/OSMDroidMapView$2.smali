.class final Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$2;
.super Ljava/lang/Object;
.source "OSMDroidMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->dibujarLugarMarcado()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$2;->this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$2;->this$0:Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;

    # invokes: Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->llenarLugarMarcado()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->access$1(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V

    .line 606
    return-void
.end method
