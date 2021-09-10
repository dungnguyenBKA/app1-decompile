.class public Lhm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhm;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhm;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Landroidx/appcompat/app/AppCompatActivity;)Z
    .locals 5

    const-string v0, "PermissionUtils"

    const-string v1, "Request storage permission."

    .line 1
    invoke-static {v0, v1}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0, v4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const-string p0, "Storage permission has already been granted."

    .line 4
    invoke-static {v0, p0}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string v1, "Storage permission has NOT been granted. Requesting permission."

    .line 5
    invoke-static {v0, v1}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v4}, Lhm;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "storage permission rationale to provide additional context."

    .line 7
    invoke-static {v0, v1}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_4
    sget-object v0, Lhm;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->e(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    const/16 v1, 0x17

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/app/Activity;

    .line 3
    sget v0, Landroidx/core/app/a;->c:I

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 6
    :cond_1
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i1(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 8
    :cond_2
    instance-of v0, p0, Landroid/app/Fragment;

    if-eqz v0, :cond_4

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 10
    check-cast p0, Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target SDK needs to be greater than 23 if caller is android.app.Fragment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object was neither an Activity nor a Fragment."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e([I)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "PermissionUtils"

    if-eqz p0, :cond_3

    .line 1
    array-length v2, p0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    if-eqz v4, :cond_1

    const-string p0, "verifyPermissions-failed: result != PackageManager.PERMISSION_GRANTED."

    .line 3
    invoke-static {v1, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "verifyPermissions-success."

    .line 4
    invoke-static {v1, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "verifyPermissions-failed: grantResults == null || grantResults.length <= 0."

    .line 5
    invoke-static {v1, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
