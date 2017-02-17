.class Lcl/santander/smartphone/localizador/ComoLlegar$1;
.super Landroid/os/Handler;
.source "ComoLlegar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/ComoLlegar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/ComoLlegar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$1;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$1;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$1;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar;)Lcl/santander/santanderCL/famtec/android/maps/Maps;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getGeoPositionsRoute()[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->IncluirPois([Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$1(Lcl/santander/smartphone/localizador/ComoLlegar;[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    .line 88
    return-void
.end method
