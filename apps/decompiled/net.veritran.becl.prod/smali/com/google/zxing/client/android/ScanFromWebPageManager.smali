.class final Lcom/google/zxing/client/android/ScanFromWebPageManager;
.super Ljava/lang/Object;
.source "ScanFromWebPageManager.java"


# static fields
.field private static final CODE_PLACEHOLDER:Ljava/lang/CharSequence;

.field private static final FORMAT_PLACEHOLDER:Ljava/lang/CharSequence;

.field private static final META_PLACEHOLDER:Ljava/lang/CharSequence;

.field private static final RAW_CODE_PLACEHOLDER:Ljava/lang/CharSequence;

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TYPE_PLACEHOLDER:Ljava/lang/CharSequence;


# instance fields
.field private final returnRaw:Z

.field private final returnUrlTemplate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "{CODE}"

    sput-object v0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->CODE_PLACEHOLDER:Ljava/lang/CharSequence;

    .line 37
    const-string v0, "{RAWCODE}"

    sput-object v0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->RAW_CODE_PLACEHOLDER:Ljava/lang/CharSequence;

    .line 38
    const-string v0, "{META}"

    sput-object v0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->META_PLACEHOLDER:Ljava/lang/CharSequence;

    .line 39
    const-string v0, "{FORMAT}"

    sput-object v0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->FORMAT_PLACEHOLDER:Ljava/lang/CharSequence;

    .line 40
    const-string v0, "{TYPE}"

    sput-object v0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->TYPE_PLACEHOLDER:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "inputUri"    # Landroid/net/Uri;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->returnUrlTemplate:Ljava/lang/String;

    .line 50
    const-string v0, "raw"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->returnRaw:Z

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "placeholder"    # Ljava/lang/CharSequence;
    .param p1, "with"    # Ljava/lang/CharSequence;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    const-string v1, ""

    .line 71
    .local v1, "escapedWith":Ljava/lang/CharSequence;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_1
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "escapedWith":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 69
    goto :goto_0

    .line 72
    .restart local v1    # "escapedWith":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method buildReplyURL(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)Ljava/lang/String;
    .locals 3
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->returnUrlTemplate:Ljava/lang/String;

    .line 59
    .local v0, "result":Ljava/lang/String;
    sget-object v2, Lcom/google/zxing/client/android/ScanFromWebPageManager;->CODE_PLACEHOLDER:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->returnRaw:Z

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    invoke-static {v2, v1, v0}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/google/zxing/client/android/ScanFromWebPageManager;->RAW_CODE_PLACEHOLDER:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/google/zxing/client/android/ScanFromWebPageManager;->FORMAT_PLACEHOLDER:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/google/zxing/client/android/ScanFromWebPageManager;->TYPE_PLACEHOLDER:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/google/zxing/client/android/ScanFromWebPageManager;->META_PLACEHOLDER:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method isScanFromWebPage()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/client/android/ScanFromWebPageManager;->returnUrlTemplate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
