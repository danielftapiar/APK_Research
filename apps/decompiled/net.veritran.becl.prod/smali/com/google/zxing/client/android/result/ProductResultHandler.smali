.class public final Lcom/google/zxing/client/android/result/ProductResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "ProductResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lnet/veritran/vtuserapplication/api/qr/android/R$string;->button_product_search:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lnet/veritran/vtuserapplication/api/qr/android/R$string;->button_web_search:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lnet/veritran/vtuserapplication/api/qr/android/R$string;->button_custom_product_search:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 42
    return-void
.end method

.method private static getProductIDFromResult(Lcom/google/zxing/client/result/ParsedResult;)Ljava/lang/String;
    .locals 2
    .param p0, "rawResult"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 71
    instance-of v0, p0, Lcom/google/zxing/client/result/ProductParsedResult;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lcom/google/zxing/client/result/ProductParsedResult;

    .end local p0    # "rawResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 74
    .restart local p0    # "rawResult":Lcom/google/zxing/client/result/ParsedResult;
    :cond_0
    instance-of v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-eqz v0, :cond_1

    .line 75
    check-cast p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    .end local p0    # "rawResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p0}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->getRawText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    .restart local p0    # "rawResult":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lnet/veritran/vtuserapplication/api/qr/android/R$string;->result_product:I

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->getProductIDFromResult(Lcom/google/zxing/client/result/ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "productID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->openProductSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
