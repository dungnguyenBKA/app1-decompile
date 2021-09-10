.class Leo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Leo;


# direct methods
.method constructor <init>(Leo;Leo$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leo$b;->b:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leo$b;->b:Leo;

    invoke-static {v0}, Leo;->n(Leo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leo$b;->b:Leo;

    invoke-static {v0}, Leo;->o(Leo;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0112

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leo$b;->b:Leo;

    invoke-static {v0}, Leo;->p(Leo;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
