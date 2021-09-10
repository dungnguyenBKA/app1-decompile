.class Ldev/drojian/rate/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p2, p0, Ldev/drojian/rate/a$c;->b:Ldd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/drojian/rate/a$c;->b:Ldd0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ldd0;->c()V

    :cond_0
    return-void
.end method
