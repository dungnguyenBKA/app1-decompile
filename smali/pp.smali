.class public final synthetic Lpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyp;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyp;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp;->b:Lyp;

    iput-object p2, p0, Lpp;->c:Landroid/app/Activity;

    iput-object p3, p0, Lpp;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lpp;->b:Lyp;

    iget-object v1, p0, Lpp;->c:Landroid/app/Activity;

    iget-object v2, p0, Lpp;->d:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v3, Landroidx/appcompat/app/g$a;

    invoke-direct {v3, v1}, Landroidx/appcompat/app/g$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e00e4

    .line 3
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/g$a;->n(I)Landroidx/appcompat/app/g$a;

    const v4, 0x7f0e00e3

    .line 4
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/g$a;->g(I)Landroidx/appcompat/app/g$a;

    const v4, 0x7f0e0050

    .line 5
    new-instance v5, Lnp;

    invoke-direct {v5, v0, v1, v2}, Lnp;-><init>(Lyp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/g$a;->k(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;

    const v0, 0x7f0e0034

    .line 6
    sget-object v1, Lrp;->b:Lrp;

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;

    .line 7
    invoke-virtual {v3}, Landroidx/appcompat/app/g$a;->a()Landroidx/appcompat/app/g;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
