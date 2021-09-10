.class Landroidx/fragment/app/h$c;
.super Landroidx/fragment/app/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/h;->e()Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/h;


# direct methods
.method constructor <init>(Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/h$c;->b:Landroidx/fragment/app/h;

    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/h$c;->b:Landroidx/fragment/app/h;

    iget-object p1, p1, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    invoke-static {v0, p2, p1}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
