.class public Lg30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg30;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6

    const-string v0, "Error while closing settings cache file."

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Checking for cached settings..."

    invoke-virtual {v1, v2}, Laz;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Lc30;

    iget-object v4, p0, Lg30;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lc30;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lc30;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "com.crashlytics.settings.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v4, "\\A"

    invoke-virtual {v2, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 7
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    const-string v3, "Settings file does not exist."

    invoke-virtual {v2, v3}, Laz;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v1

    .line 9
    :goto_1
    invoke-static {v1, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 10
    :goto_2
    :try_start_3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v4

    const-string v5, "Failed to fetch cached settings"

    invoke-virtual {v4, v5, v2}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    invoke-static {v3, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_3
    return-object v1

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_4
    invoke-static {v1, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 12
    throw v2
.end method

.method public b(JLorg/json/JSONObject;)V
    .locals 4

    const-string v0, "Failed to close settings writer."

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Writing settings to cache file..."

    invoke-virtual {v1, v2}, Laz;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "expires_at"

    .line 2
    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    new-instance p1, Ljava/io/FileWriter;

    .line 4
    new-instance p2, Ljava/io/File;

    new-instance v2, Lc30;

    iget-object v3, p0, Lg30;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lc30;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lc30;->a()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.crashlytics.settings.json"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {p1, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 9
    :goto_0
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string p3, "Failed to cache settings"

    invoke-virtual {p1, p3, p2}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {v1, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v0}, Lsz;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 11
    throw p2
.end method
