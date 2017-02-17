.class public final Lorg/mapsforge/android/maps/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# static fields
.field private static final FPS_PAINT:Landroid/graphics/Paint;

.field private static final FPS_PAINT_STROKE:Landroid/graphics/Paint;


# instance fields
.field private fps:I

.field private frameCounter:I

.field private previousTime:J

.field private showFpsCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/android/maps/FpsCounter;->previousTime:J

    .line 50
    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    return-void
.end method


# virtual methods
.method final draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v6, 0x41a00000    # 20.0f

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "currentTime":J
    iget-wide v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->previousTime:J

    sub-long v2, v0, v4

    .line 71
    .local v2, "elapsedTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 72
    iget v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->frameCounter:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    long-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->fps:I

    .line 73
    iput-wide v0, p0, Lorg/mapsforge/android/maps/FpsCounter;->previousTime:J

    .line 74
    const/4 v4, 0x0

    iput v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->frameCounter:I

    .line 76
    :cond_0
    iget v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->fps:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT_STROKE:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    iget v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->fps:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mapsforge/android/maps/FpsCounter;->FPS_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    iget v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->frameCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mapsforge/android/maps/FpsCounter;->frameCounter:I

    .line 79
    return-void
.end method

.method public final isShowFpsCounter()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/FpsCounter;->showFpsCounter:Z

    return v0
.end method
