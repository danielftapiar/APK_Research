.class Lnet/veritran/component/VTChartComponent$2;
.super Ljava/lang/Object;
.source "VTChartComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTChartComponent;->loadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTChartComponent;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTChartComponent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTChartComponent;

    .prologue
    .line 1286
    iput-object p1, p0, Lnet/veritran/component/VTChartComponent$2;->this$0:Lnet/veritran/component/VTChartComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lnet/veritran/component/VTChartComponent$2;->this$0:Lnet/veritran/component/VTChartComponent;

    # getter for: Lnet/veritran/component/VTChartComponent;->vtChart:Lnet/veritran/component/view/VTChartComponentView;
    invoke-static {v0}, Lnet/veritran/component/VTChartComponent;->access$400(Lnet/veritran/component/VTChartComponent;)Lnet/veritran/component/view/VTChartComponentView;

    move-result-object v0

    const-string v1, "file:///android_asset/chart.html"

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTChartComponentView;->loadUrl(Ljava/lang/String;)V

    .line 1292
    return-void
.end method
