.class final Lorg/acra/collector/DropBoxCollector;
.super Ljava/lang/Object;
.source "DropBoxCollector.java"


# static fields
.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additionalTags"    # [Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    const-class v19, Landroid/content/Context;

    const-string v20, "DROPBOX_SERVICE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    if-eqz v19, :cond_0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v12, v19

    .line 63
    .local v12, "serviceName":Ljava/lang/String;
    :goto_0
    if-nez v12, :cond_1

    .line 64
    const-string v19, "N/A"

    .line 133
    .end local v12    # "serviceName":Ljava/lang/String;
    :goto_1
    return-object v19

    .line 62
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 67
    .restart local v12    # "serviceName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "dropbox":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getNextEntry"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 69
    .local v6, "getNextEntry":Ljava/lang/reflect/Method;
    if-nez v6, :cond_2

    .line 70
    const-string v19, ""

    goto :goto_1

    .line 73
    :cond_2
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 74
    .local v18, "timer":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 75
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/acra/ACRAConfiguration;->dropboxCollectionMinutes()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 76
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->normalize(Z)J

    .line 77
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 79
    .local v16, "time":J
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v14, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/acra/ACRAConfiguration;->includeDropBoxSystemTags()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 81
    sget-object v19, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_3
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 84
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 88
    const-string v19, "No tag configured for collection."

    goto/16 :goto_1

    .line 91
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v4, "dropboxContent":Ljava/lang/StringBuilder;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 93
    .local v13, "tag":Ljava/lang/String;
    const-string v19, "Tag: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 95
    .local v5, "entry":Ljava/lang/Object;
    if-nez v5, :cond_7

    .line 96
    const-string v19, "Nothing.\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_2

    .line 120
    .end local v3    # "dropbox":Ljava/lang/Object;
    .end local v4    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v5    # "entry":Ljava/lang/Object;
    .end local v6    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "time":J
    .end local v18    # "timer":Landroid/text/format/Time;
    :catch_0
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_3
    const-string v19, "N/A"

    goto/16 :goto_1

    .line 100
    .restart local v3    # "dropbox":Ljava/lang/Object;
    .restart local v4    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v5    # "entry":Ljava/lang/Object;
    .restart local v6    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "serviceName":Ljava/lang/String;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "time":J
    .restart local v18    # "timer":Landroid/text/format/Time;
    :cond_7
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getText"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 101
    .local v7, "getText":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getTimeMillis"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 102
    .local v8, "getTimeMillis":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "close"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 103
    .local v2, "close":Ljava/lang/reflect/Method;
    :goto_4
    if-eqz v5, :cond_6

    .line 104
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 105
    .local v10, "msec":J
    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 106
    const-string v19, "@"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1f4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v7, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 108
    .local v15, "text":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 109
    const-string v19, "Text: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_5
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    goto :goto_4

    .line 111
    :cond_8
    const-string v19, "Not Text!\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_5

    .line 122
    .end local v2    # "close":Ljava/lang/reflect/Method;
    .end local v3    # "dropbox":Ljava/lang/Object;
    .end local v4    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v5    # "entry":Ljava/lang/Object;
    .end local v6    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v7    # "getText":Ljava/lang/reflect/Method;
    .end local v8    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "msec":J
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "time":J
    .end local v18    # "timer":Landroid/text/format/Time;
    :catch_1
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 117
    .restart local v3    # "dropbox":Ljava/lang/Object;
    .restart local v4    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v6    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "serviceName":Ljava/lang/String;
    .restart local v14    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "time":J
    .restart local v18    # "timer":Landroid/text/format/Time;
    :cond_9
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v19

    goto/16 :goto_1

    .line 124
    .end local v3    # "dropbox":Ljava/lang/Object;
    .end local v4    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v6    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v14    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "time":J
    .end local v18    # "timer":Landroid/text/format/Time;
    :catch_2
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 126
    :catch_3
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 128
    :catch_4
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 130
    :catch_5
    move-exception v19

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v20, "DropBoxManager not available."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
