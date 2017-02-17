.class final Lcom/google/zxing/client/android/result/supplement/TitleRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "TitleRetriever.java"


# static fields
.field private static final MAX_TITLE_LEN:I = 0x64

.field private static final TITLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final httpUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "<title>([^<]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Lcom/google/zxing/client/result/URIParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "result"    # Lcom/google/zxing/client/result/URIParsedResult;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 42
    invoke-virtual {p2}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .locals 7

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    const-string v0, ""

    .line 55
    .local v0, "contents":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 56
    sget-object v3, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v6

    iget-object v6, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method
