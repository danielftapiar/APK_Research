.class final Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "AmazonInfoRetriever.java"


# instance fields
.field private final country:Ljava/lang/String;

.field private final productID:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p4}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 49
    invoke-static {p5}, Lcom/google/zxing/client/android/LocaleManager;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "country":Ljava/lang/String;
    const-string v1, "ISBN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const-string p2, "EAN"

    .line 53
    :cond_0
    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->type:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->productID:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->country:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static assertTextNext(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 155
    :cond_0
    return-void
.end method

.method private static buildParser(Ljava/lang/CharSequence;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p0, "contents"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 159
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 160
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 161
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 162
    return-object v1
.end method

.method private doRetrieveForCountry(Ljava/lang/String;)Z
    .locals 23
    .param p1, "theCountry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v5, ""

    .line 73
    .local v5, "contents":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 74
    .local v6, "detailPageURL":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v4, "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 76
    .local v17, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 77
    .local v9, "formattedNewPrice":Ljava/lang/String;
    const/4 v10, 0x0

    .line 78
    .local v10, "formattedUsedPrice":Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, "error":Z
    :try_start_0
    invoke-static {v5}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->buildParser(Ljava/lang/CharSequence;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 83
    .local v18, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    .line 84
    .local v13, "seenItem":Z
    const/4 v14, 0x0

    .line 85
    .local v14, "seenLowestNewPrice":Z
    const/4 v15, 0x0

    .line 87
    .local v15, "seenLowestUsedPrice":Z
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .local v8, "eventType":I
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_0

    .line 88
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    .line 89
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "name":Ljava/lang/String;
    const-string v20, "Item"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 91
    if-eqz v13, :cond_2

    .line 134
    .end local v11    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    if-nez v6, :cond_d

    .line 135
    :cond_1
    const/16 v20, 0x0

    .line 148
    :goto_2
    return v20

    .line 94
    .restart local v11    # "name":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x1

    .line 87
    .end local v11    # "name":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 96
    .restart local v11    # "name":Ljava/lang/String;
    :cond_4
    const-string v20, "DetailPageURL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 97
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->assertTextNext(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 98
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 99
    :cond_5
    const-string v20, "Author"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 100
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->assertTextNext(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 130
    .end local v8    # "eventType":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "seenItem":Z
    .end local v14    # "seenLowestNewPrice":Z
    .end local v15    # "seenLowestUsedPrice":Z
    .end local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v19

    .line 131
    .local v19, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v20, Ljava/io/IOException;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 102
    .end local v19    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "eventType":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "seenItem":Z
    .restart local v14    # "seenLowestNewPrice":Z
    .restart local v15    # "seenLowestUsedPrice":Z
    .restart local v18    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_1
    const-string v20, "Title"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 103
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->assertTextNext(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 105
    :cond_7
    const-string v20, "LowestNewPrice"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 106
    const/4 v14, 0x1

    .line 107
    const/4 v15, 0x0

    goto :goto_3

    .line 108
    :cond_8
    const-string v20, "LowestUsedPrice"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x1

    goto :goto_3

    .line 111
    :cond_9
    const-string v20, "FormattedPrice"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 112
    if-nez v14, :cond_a

    if-eqz v15, :cond_3

    .line 113
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->assertTextNext(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    .line 115
    .local v16, "theText":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 116
    move-object/from16 v9, v16

    .line 120
    :goto_4
    const/4 v14, 0x0

    .line 121
    const/4 v15, 0x0

    .line 122
    goto :goto_3

    .line 118
    :cond_b
    move-object/from16 v10, v16

    goto :goto_4

    .line 123
    .end local v16    # "theText":Ljava/lang/String;
    :cond_c
    const-string v20, "Errors"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-eqz v20, :cond_3

    .line 124
    const/4 v7, 0x1

    .line 125
    goto/16 :goto_1

    .line 138
    .end local v11    # "name":Ljava/lang/String;
    :cond_d
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v12, "newTexts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->maybeAddText(Ljava/lang/String;Ljava/util/Collection;)V

    .line 140
    invoke-static {v4, v12}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->maybeAddTextSeries(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 141
    if-eqz v9, :cond_f

    .line 142
    invoke-static {v9, v12}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->maybeAddText(Ljava/lang/String;Ljava/util/Collection;)V

    .line 147
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->productID:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Amazon "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 143
    :cond_f
    if-eqz v10, :cond_e

    .line 144
    invoke-static {v10, v12}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->maybeAddText(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_5
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->country:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->doRetrieveForCountry(Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "success":Z
    if-nez v0, :cond_0

    const-string v1, "US"

    iget-object v2, p0, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "US"

    invoke-direct {p0, v1}, Lcom/google/zxing/client/android/result/supplement/AmazonInfoRetriever;->doRetrieveForCountry(Ljava/lang/String;)Z

    .line 65
    :cond_0
    return-void
.end method
