.class public Lnet/veritran/Banner;
.super Landroid/widget/ImageView;
.source "Banner.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private h:I

.field private id:Ljava/lang/String;

.field private multHeight:F

.field private multWidth:F

.field private resourceOrigin:Ljava/lang/String;

.field private sizeDefined:Z

.field private stretch:Z

.field private w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resourceOrigin"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v2, p0, Lnet/veritran/Banner;->stretch:Z

    .line 23
    iput v1, p0, Lnet/veritran/Banner;->w:I

    .line 25
    iput v1, p0, Lnet/veritran/Banner;->h:I

    .line 27
    iput v0, p0, Lnet/veritran/Banner;->multWidth:F

    .line 28
    iput v0, p0, Lnet/veritran/Banner;->multHeight:F

    .line 30
    iput-boolean v2, p0, Lnet/veritran/Banner;->sizeDefined:Z

    .line 34
    iput-object p1, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lnet/veritran/Banner;->resourceOrigin:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resourceOrigin"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    invoke-direct {p0, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v2, p0, Lnet/veritran/Banner;->stretch:Z

    .line 23
    iput v1, p0, Lnet/veritran/Banner;->w:I

    .line 25
    iput v1, p0, Lnet/veritran/Banner;->h:I

    .line 27
    iput v0, p0, Lnet/veritran/Banner;->multWidth:F

    .line 28
    iput v0, p0, Lnet/veritran/Banner;->multHeight:F

    .line 30
    iput-boolean v2, p0, Lnet/veritran/Banner;->sizeDefined:Z

    .line 40
    iput-object p1, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lnet/veritran/Banner;->resourceOrigin:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resourceOrigin"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v2, p0, Lnet/veritran/Banner;->stretch:Z

    .line 23
    iput v1, p0, Lnet/veritran/Banner;->w:I

    .line 25
    iput v1, p0, Lnet/veritran/Banner;->h:I

    .line 27
    iput v0, p0, Lnet/veritran/Banner;->multWidth:F

    .line 28
    iput v0, p0, Lnet/veritran/Banner;->multHeight:F

    .line 30
    iput-boolean v2, p0, Lnet/veritran/Banner;->sizeDefined:Z

    .line 46
    iput-object p1, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lnet/veritran/Banner;->resourceOrigin:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";onMeasure("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") sizeDefined="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lnet/veritran/Banner;->sizeDefined:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v6, p0, Lnet/veritran/Banner;->sizeDefined:Z

    if-eqz v6, :cond_0

    .line 79
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";onMeasure("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") already measured to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/veritran/Banner;->w:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/veritran/Banner;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gtz v6, :cond_5

    .line 82
    :cond_1
    const/4 v5, 0x0

    .line 83
    .local v5, "width":I
    const/4 v2, 0x0

    .line 123
    .local v2, "height":I
    :goto_0
    iget-boolean v6, p0, Lnet/veritran/Banner;->sizeDefined:Z

    if-nez v6, :cond_2

    .line 124
    iput v5, p0, Lnet/veritran/Banner;->w:I

    .line 125
    iput v2, p0, Lnet/veritran/Banner;->h:I

    .line 127
    :cond_2
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";setMeasuredDimension("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget v6, p0, Lnet/veritran/Banner;->w:I

    if-ne v6, v5, :cond_3

    iget v6, p0, Lnet/veritran/Banner;->h:I

    if-eq v6, v2, :cond_4

    .line 129
    :cond_3
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";Width and/or Height has variations!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/veritran/Banner;->w:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnet/veritran/Banner;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget v5, p0, Lnet/veritran/Banner;->w:I

    .line 133
    iget v2, p0, Lnet/veritran/Banner;->h:I

    .line 135
    :cond_4
    invoke-virtual {p0, v5, v2}, Lnet/veritran/Banner;->setMeasuredDimension(II)V

    .line 136
    const/4 v6, 0x1

    iput-boolean v6, p0, Lnet/veritran/Banner;->sizeDefined:Z

    .line 137
    return-void

    .line 84
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_5
    iget-boolean v6, p0, Lnet/veritran/Banner;->stretch:Z

    if-eqz v6, :cond_9

    .line 85
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";stretch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 87
    .local v4, "maxWidth":I
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";measured width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-nez v4, :cond_6

    .line 89
    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 93
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 94
    .local v3, "maxHeight":I
    const-string v6, "BANNER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/Banner;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";measured height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez v3, :cond_7

    .line 96
    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 101
    :cond_7
    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v4

    iget-object v7, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int v0, v6, v7

    .line 103
    .local v0, "candidateHeight":I
    iget-object v6, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v3

    iget-object v7, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int v1, v6, v7

    .line 105
    .local v1, "candidateWidth":I
    if-gt v0, v3, :cond_8

    .line 106
    iget v6, p0, Lnet/veritran/Banner;->multWidth:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 107
    .restart local v5    # "width":I
    iget v6, p0, Lnet/veritran/Banner;->multHeight:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "height":I
    goto/16 :goto_0

    .line 109
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_8
    iget v6, p0, Lnet/veritran/Banner;->multWidth:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 110
    .restart local v2    # "height":I
    iget v6, p0, Lnet/veritran/Banner;->multHeight:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .restart local v5    # "width":I
    goto/16 :goto_0

    .line 118
    .end local v0    # "candidateHeight":I
    .end local v1    # "candidateWidth":I
    .end local v2    # "height":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v5    # "width":I
    :cond_9
    iget v6, p0, Lnet/veritran/Banner;->multWidth:F

    iget-object v7, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 120
    .restart local v5    # "width":I
    iget v6, p0, Lnet/veritran/Banner;->multHeight:F

    iget-object v7, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "height":I
    goto/16 :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lnet/veritran/Banner;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lnet/veritran/Banner;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    return-void
.end method

.method public setStreatcheable(Z)V
    .locals 0
    .param p1, "stretch"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lnet/veritran/Banner;->stretch:Z

    .line 63
    return-void
.end method

.method public setZoomMultiplier(FF)V
    .locals 0
    .param p1, "multWidth"    # F
    .param p2, "multHeight"    # F

    .prologue
    .line 67
    iput p1, p0, Lnet/veritran/Banner;->multWidth:F

    .line 68
    iput p2, p0, Lnet/veritran/Banner;->multHeight:F

    .line 70
    return-void
.end method
