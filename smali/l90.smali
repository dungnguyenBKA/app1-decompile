.class public abstract Ll90;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lm90;Ln90;)Ll90;
    .locals 1

    .line 1
    invoke-static {}, Le90;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdSessionConfiguration is null"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu90;

    invoke-direct {v0, p0, p1}, Lu90;-><init>(Lm90;Ln90;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d()V
.end method
