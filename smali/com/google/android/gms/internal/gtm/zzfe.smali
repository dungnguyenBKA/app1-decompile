.class final Lcom/google/android/gms/internal/gtm/zzfe;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "SourceFile"


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfe;->zza:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GoogleAnalytics"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    .line 4
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    return-void
.end method

.method static bridge synthetic zzf()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfe;->zza:[B

    return-object v0
.end method

.method private final zzg(Ljava/net/URL;[B)I
    .locals 5

    const-string v0, "Error closing http post connection output stream"

    const-string v1, "null reference"

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "POST bytes, url"

    invoke-virtual {p0, v3, v2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbr;->zzV()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    .line 5
    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string v3, "Post payload\n"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 8
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 9
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    const/16 p2, 0xc8

    :cond_1
    const-string v1, "POST status"

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return p2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, p1

    move-object p1, v2

    :goto_1
    :try_start_3
    const-string v1, "Network POST connection error"

    .line 20
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    .line 21
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception p2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 24
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 26
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 27
    :cond_5
    throw p2
.end method

.method private final zzh()Ljava/net/URL;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzt:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 6
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzi(Lcom/google/android/gms/internal/gtm/zzex;)Ljava/net/URL;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    .line 6
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Error trying to parse the hardcoded host url"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzj(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result p1

    const-string v0, "?"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "Error trying to parse the hardcoded host url"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzk(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "Error closing http connection input stream"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v2, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_1
    :goto_1
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static final zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "UTF-8"

    .line 3
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;
    .locals 7

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "z"

    const-string v4, "qt"

    const-string v5, "ht"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AppUID"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_gmsv"

    .line 10
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzc()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p2, v1, v4

    if-eqz p2, :cond_2

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 19
    :goto_1
    invoke-static {v0, v3, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to encode name or value"

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzE:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzF:Lcom/google/android/gms/internal/gtm/zzet;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    const-string v1, "User-Agent"

    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain http connection"

    .line 15
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzex;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error closing http compressed post connection output stream"

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-string v0, "null reference"

    move-object/from16 v3, p1

    .line 3
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzct;->zza()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_7

    iget-object v4, v1, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 6
    sget-object v7, Lcom/google/android/gms/internal/gtm/zzeu;->zzC:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 7
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzeu;->zzv:Lcom/google/android/gms/internal/gtm/zzet;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "BATCH_BY_SESSION"

    .line 10
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "BATCH_BY_TIME"

    .line 11
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "BATCH_BY_BRUTE_FORCE"

    .line 12
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "BATCH_BY_COUNT"

    .line 13
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const-string v7, "BATCH_BY_SIZE"

    .line 14
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 15
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzeu;->zzw:Lcom/google/android/gms/internal/gtm/zzet;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "GZIP"

    .line 17
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0xc8

    if-eqz v4, :cond_17

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/common/internal/n;->a(Z)V

    .line 19
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Uploading batched hits. compression, count"

    invoke-virtual {v1, v11, v4, v10}, Lcom/google/android/gms/internal/gtm/zzbr;->zzQ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzfd;

    .line 20
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/gtm/zzfd;-><init>(Lcom/google/android/gms/internal/gtm/zzfe;)V

    new-instance v10, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/gtm/zzex;

    .line 23
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzex;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_6

    .line 24
    :cond_8
    invoke-virtual {v11}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 25
    :cond_9
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()I

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_f

    .line 26
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzfe;->zzh()Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v0, "Failed to build batching endpoint url"

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    goto/16 :goto_f

    :cond_b
    if-eqz v7, :cond_14

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfd;->zzc()[B

    move-result-object v7

    .line 30
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v11, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 35
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v11, "POST compressed size, ratio %, url"

    .line 38
    array-length v12, v0

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    int-to-long v14, v12

    const-wide/16 v16, 0x64

    mul-long v14, v14, v16

    array-length v9, v7

    int-to-long v5, v9

    div-long/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 40
    invoke-virtual {v1, v11, v13, v5, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzI(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-le v12, v9, :cond_c

    const-string v5, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 42
    invoke-virtual {v1, v5, v13, v6}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbr;->zzV()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "Post payload"

    const-string v6, "\n"

    new-instance v9, Ljava/lang/String;

    .line 44
    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 45
    :cond_d
    new-instance v7, Ljava/lang/String;

    .line 46
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_7
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_e
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    .line 48
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 49
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 51
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 52
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 56
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v8, :cond_f

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    const/16 v0, 0xc8

    :cond_f
    const-string v5, "POST status"

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v5, v0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v9, v5

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v9, v3

    move-object/from16 v16, v5

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    const/4 v9, 0x0

    :goto_8
    move-object v3, v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v9, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v9, 0x0

    const/16 v16, 0x0

    goto :goto_c

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    :goto_9
    const/16 v16, 0x0

    :goto_a
    :try_start_4
    const-string v3, "Network compressed POST connection error"

    .line 60
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v16, :cond_10

    .line 61
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    :goto_b
    if-eqz v9, :cond_11

    .line 63
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    const/4 v5, 0x0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    :goto_c
    if-eqz v9, :cond_12

    .line 64
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 65
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    :goto_d
    if-eqz v16, :cond_13

    .line 66
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    :cond_13
    throw v3

    .line 68
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfd;->zzc()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzfe;->zzg(Ljava/net/URL;[B)I

    move-result v5

    :goto_e
    if-ne v5, v8, :cond_15

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()I

    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Batched upload completed. Hits batched"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 71
    :cond_15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Network error uploading hits. status code"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzct;->zza()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Server instructed the client to stop batching"

    .line 73
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V

    .line 75
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    :goto_f
    return-object v10

    .line 76
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzex;

    .line 79
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v5

    const-string v7, "Error formatting hit for upload"

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    :goto_10
    const/4 v5, 0x0

    goto/16 :goto_13

    .line 82
    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 83
    sget-object v9, Lcom/google/android/gms/internal/gtm/zzeu;->zzu:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v7, v9, :cond_1d

    .line 84
    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zzj(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    if-nez v5, :cond_1a

    const-string v0, "Failed to build collect GET endpoint url"

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_1a
    const-string v7, "GET request"

    .line 86
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :try_start_7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 88
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 89
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 90
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    if-ne v7, v8, :cond_1b

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    const/16 v7, 0xc8

    :cond_1b
    const-string v9, "GET status"

    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 93
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    if-ne v7, v8, :cond_21

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v9, v5

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v9, v5

    goto :goto_11

    :catchall_5
    move-exception v0

    const/4 v9, 0x0

    goto :goto_12

    :catch_6
    move-exception v0

    const/4 v9, 0x0

    :goto_11
    :try_start_9
    const-string v3, "Network GET connection error"

    .line 94
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v9, :cond_21

    .line 95
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_14

    :catchall_6
    move-exception v0

    :goto_12
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    :cond_1c
    throw v0

    :cond_1d
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v7

    const-string v9, "Error formatting hit for POST upload"

    invoke-virtual {v7, v4, v9}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    goto :goto_13

    .line 99
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 100
    array-length v9, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v10, Lcom/google/android/gms/internal/gtm/zzeu;->zzz:Lcom/google/android/gms/internal/gtm/zzet;

    .line 101
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_1f

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v7

    const-string v9, "Hit payload exceeds size limit"

    invoke-virtual {v7, v4, v9}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    goto :goto_13

    .line 103
    :cond_1f
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zzi(Lcom/google/android/gms/internal/gtm/zzex;)Ljava/net/URL;

    move-result-object v9

    if-nez v9, :cond_20

    const-string v0, "Failed to build collect POST endpoint url"

    .line 104
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    goto :goto_14

    .line 105
    :cond_20
    invoke-direct {v1, v9, v7}, Lcom/google/android/gms/internal/gtm/zzfe;->zzg(Ljava/net/URL;[B)I

    move-result v7

    if-ne v7, v8, :cond_21

    .line 106
    :goto_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzh()I

    move-result v7

    if-lt v4, v7, :cond_18

    :cond_21
    :goto_14
    return-object v2
.end method

.method protected final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    const-string v1, "Network initialized. User agent"

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    const-string v0, "No network connectivity"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
