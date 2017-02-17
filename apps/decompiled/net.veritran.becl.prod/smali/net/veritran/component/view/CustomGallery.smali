.class public Lnet/veritran/component/view/CustomGallery;
.super Landroid/widget/Gallery;
.source "CustomGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public flingToRight()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, "f":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 37
    .local v3, "gallerySpacing":I
    if-eqz v1, :cond_2

    .line 38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 39
    aget-object v2, v1, v4

    .line 40
    .local v2, "fieldItem":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mSpacing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "fieldItem":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v6, v3, 0x1

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v8, v8, v6, v7}, Lnet/veritran/component/view/CustomGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 49
    .end local v4    # "i":I
    :cond_2
    const/16 v5, 0x16

    .line 50
    .local v5, "kEvent":I
    invoke-virtual {p0, v5, v8}, Lnet/veritran/component/view/CustomGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 51
    return-void
.end method
