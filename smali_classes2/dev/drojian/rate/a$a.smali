.class Ldev/drojian/rate/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/drojian/rate/a;->h(Landroid/content/Context;Lbd0;Ldd0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldd0;


# direct methods
.method constructor <init>(Ldev/drojian/rate/a;Ldd0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ldev/drojian/rate/a$a;->b:Ldd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/drojian/rate/a$a;->b:Ldd0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ldd0;->a()V

    .line 3
    iget-object v0, p0, Ldev/drojian/rate/a$a;->b:Ldd0;

    const-string v1, "AppRate_new"

    const-string v2, "Show"

    const-string v3, "cancel"

    invoke-interface {v0, v1, v2, v3}, Ldd0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
