.class Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "VTFontHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/utils/VTFontHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTypefaceSpan"
.end annotation


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method

.method private apply(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 53
    .local v2, "oldTypeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 54
    .local v1, "oldStyle":I
    :goto_0
    iget-object v3, p0, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .line 56
    .local v0, "fakeStyle":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 58
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 61
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 63
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 66
    :cond_1
    iget-object v3, p0, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    return-void

    .line 53
    .end local v0    # "fakeStyle":I
    .end local v1    # "oldStyle":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "drawState"    # Landroid/text/TextPaint;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 48
    return-void
.end method
