.class Lgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgm;->a:Landroid/content/Context;

    iput-object p2, p0, Lgm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lgm;->a:Landroid/content/Context;

    iget-object p2, p0, Lgm;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcm;->s(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "MediaLibraryUtils"

    const-string p2, "scannerFile failed: use send broadcast scan file"

    .line 3
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
