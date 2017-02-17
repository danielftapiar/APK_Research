.class public Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;
.super Ljava/lang/Object;
.source "TabManagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/TabManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultLayoutSetup"
.end annotation


# instance fields
.field private border:I

.field private image:I

.field private noramlColors:[I

.field private normalOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private overlay:I

.field private overlayOffset:I

.field private pressedColors:[I

.field private pressedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private selectedColors:[I

.field private selectedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private tabContentSeparatorHeight:I

.field private tabContentSeperatorColor:I

.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

.field private titleColors:[I


# direct methods
.method private constructor <init>(Lde/viktorreiser/toolbox/widget/TabManagerView;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->restoreDefaultSetup()V

    .line 1250
    return-void
.end method

.method synthetic constructor <init>(Lde/viktorreiser/toolbox/widget/TabManagerView;Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)V
    .locals 0

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;-><init>(Lde/viktorreiser/toolbox/widget/TabManagerView;)V

    return-void
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeparatorHeight:I

    return v0
.end method

.method static synthetic access$10(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method static synthetic access$11(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedColors:[I

    return-object v0
.end method

.method static synthetic access$12(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->normalOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method static synthetic access$13(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->noramlColors:[I

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeperatorColor:I

    return v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I

    return v0
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I

    return v0
.end method

.method static synthetic access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I

    return v0
.end method

.method static synthetic access$6(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I

    return v0
.end method

.method static synthetic access$7(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->titleColors:[I

    return-object v0
.end method

.method static synthetic access$8(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method static synthetic access$9(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedColors:[I

    return-object v0
.end method


# virtual methods
.method public restoreDefaultSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1065
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1067
    .local v0, "densitiy":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I

    .line 1068
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I

    .line 1069
    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I

    .line 1070
    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I

    .line 1072
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->titleColors:[I

    .line 1074
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->normalOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1075
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->noramlColors:[I

    .line 1077
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1078
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedColors:[I

    .line 1080
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1081
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedColors:[I

    .line 1083
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeparatorHeight:I

    .line 1084
    const v1, -0x444445

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeperatorColor:I

    .line 1085
    return-void

    .line 1072
    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
        -0x1
    .end array-data

    .line 1075
    :array_1
    .array-data 4
        -0xbbbbbc
        -0x1000000
    .end array-data

    .line 1078
    :array_2
    .array-data 4
        -0x777778
        -0xbbbbbc
    .end array-data

    .line 1081
    :array_3
    .array-data 4
        -0x1
        -0x444445
    .end array-data
.end method

.method public setDimensions(IIII)V
    .locals 2
    .param p1, "border"    # I
    .param p2, "image"    # I
    .param p3, "overlay"    # I
    .param p4, "overlayOffset"    # I

    .prologue
    .line 1211
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 1212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "border, image or overly is negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_1
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    mul-int/lit8 v1, p3, 0x2

    if-ge v0, v1, :cond_2

    .line 1216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1217
    const-string v1, "image + overlayOffset * 2 must be >= overlay * 2"

    .line 1216
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_2
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I

    .line 1221
    iput p2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I

    .line 1222
    iput p3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I

    .line 1223
    iput p4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I

    .line 1224
    return-void
.end method

.method public setNormalStateGradient(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1116
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 1117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors have to define at least one color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->normalOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1121
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->noramlColors:[I

    .line 1122
    return-void
.end method

.method public setPressedStateGradient(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    .line 1135
    if-nez p1, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1139
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 1140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors have to define at least one color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1144
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedColors:[I

    .line 1145
    return-void
.end method

.method public setSelectedStateGradient(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    .line 1158
    if-nez p1, :cond_0

    .line 1159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1162
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 1163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors have to define at least one color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1167
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedColors:[I

    .line 1168
    return-void
.end method

.method public setTabContentSeparator(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 1181
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$0(Lde/viktorreiser/toolbox/widget/TabManagerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1183
    const-string v1, "You have to call this before first call of addTab!"

    .line 1182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    if-gez p1, :cond_1

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height has to be greater or equal 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_1
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeparatorHeight:I

    .line 1191
    iput p2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeperatorColor:I

    .line 1192
    return-void
.end method

.method public setTitleColors(III)V
    .locals 2
    .param p1, "normal"    # I
    .param p2, "pressed"    # I
    .param p3, "selected"    # I

    .prologue
    .line 1098
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->titleColors:[I

    .line 1099
    return-void
.end method
