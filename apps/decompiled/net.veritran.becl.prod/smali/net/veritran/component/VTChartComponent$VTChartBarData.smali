.class Lnet/veritran/component/VTChartComponent$VTChartBarData;
.super Ljava/lang/Object;
.source "VTChartComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTChartComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTChartBarData"
.end annotation


# instance fields
.field public serieColor:Ljava/lang/String;

.field public serieDescription:Ljava/lang/String;

.field public serieOrder:I

.field final synthetic this$0:Lnet/veritran/component/VTChartComponent;

.field public x:F

.field public xTickValue:Ljava/lang/String;

.field public y:F

.field public yTickValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/veritran/component/VTChartComponent;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lnet/veritran/component/VTChartComponent$VTChartBarData;->this$0:Lnet/veritran/component/VTChartComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTChartComponent$VTChartBarData;->serieOrder:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/component/VTChartComponent;Lnet/veritran/component/VTChartComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/component/VTChartComponent;
    .param p2, "x1"    # Lnet/veritran/component/VTChartComponent$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lnet/veritran/component/VTChartComponent$VTChartBarData;-><init>(Lnet/veritran/component/VTChartComponent;)V

    return-void
.end method
