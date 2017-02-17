.class Lnet/veritran/component/VTChartComponent$VTChartPieData;
.super Ljava/lang/Object;
.source "VTChartComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTChartComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTChartPieData"
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public data:F

.field public label:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/component/VTChartComponent;


# direct methods
.method private constructor <init>(Lnet/veritran/component/VTChartComponent;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lnet/veritran/component/VTChartComponent$VTChartPieData;->this$0:Lnet/veritran/component/VTChartComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/component/VTChartComponent;
    .param p2, "x1"    # Lnet/veritran/component/VTChartComponent$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lnet/veritran/component/VTChartComponent$VTChartPieData;-><init>(Lnet/veritran/component/VTChartComponent;)V

    return-void
.end method
