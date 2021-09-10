.class public Lcom/google/android/gms/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/common/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/h;
    .locals 2

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/google/android/gms/common/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/h;->b:Lcom/google/android/gms/common/h;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/l;->c(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/common/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/h;->b:Lcom/google/android/gms/common/h;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Lcom/google/android/gms/common/h;->b:Lcom/google/android/gms/common/h;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs d(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/m;)Lcom/google/android/gms/common/m;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/p;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/p;-><init>([B)V

    .line 5
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/m;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static e(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/common/r;->a:[Lcom/google/android/gms/common/m;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/h;->d(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/m;)Lcom/google/android/gms/common/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/m;

    .line 3
    sget-object v2, Lcom/google/android/gms/common/r;->a:[Lcom/google/android/gms/common/m;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/h;->d(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/m;)Lcom/google/android/gms/common/m;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public b(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/h;->e(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/h;->e(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/h;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/g;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public c(I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxv;->i(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v0, p1, v3

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/common/h;->a:Landroid/content/Context;

    .line 5
    invoke-static {v4}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v0}, Lxv;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/google/android/gms/common/h;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/common/g;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v5

    if-nez v4, :cond_1

    const-string v4, "null pkg"

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/common/t;->b(Ljava/lang/String;)Lcom/google/android/gms/common/t;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_4

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v6, Lcom/google/android/gms/common/p;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/android/gms/common/p;-><init>([B)V

    .line 11
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 12
    invoke-static {v8, v6, v5, v2}, Lcom/google/android/gms/common/l;->a(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;

    move-result-object v5

    .line 13
    iget-boolean v9, v5, Lcom/google/android/gms/common/t;->a:Z

    if-eqz v9, :cond_3

    .line 14
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 15
    invoke-static {v8, v6, v2, v7}, Lcom/google/android/gms/common/l;->a(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;

    move-result-object v4

    .line 16
    iget-boolean v4, v4, Lcom/google/android/gms/common/t;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "debuggable release cert app rejected"

    .line 17
    invoke-static {v4}, Lcom/google/android/gms/common/t;->b(Ljava/lang/String;)Lcom/google/android/gms/common/t;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v5

    goto :goto_3

    :cond_4
    :goto_1
    const-string v4, "single cert required"

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/common/t;->b(Ljava/lang/String;)Lcom/google/android/gms/common/t;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    const-string v4, "no pkg "

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/t;->b(Ljava/lang/String;)Lcom/google/android/gms/common/t;

    move-result-object v0

    .line 20
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/gms/common/t;->a:Z

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p1, "null reference"

    .line 21
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    :goto_4
    const-string p1, "no pkgs"

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/t;->b(Ljava/lang/String;)Lcom/google/android/gms/common/t;

    move-result-object v0

    .line 23
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/common/t;->d()V

    .line 24
    iget-boolean p1, v0, Lcom/google/android/gms/common/t;->a:Z

    return p1
.end method
