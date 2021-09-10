.class Ly9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7$b;


# instance fields
.field final synthetic a:Lz9;


# direct methods
.method constructor <init>(Lz9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly9;->a:Lz9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly9;->a:Lz9;

    invoke-static {v0}, Lz9;->e(Lz9;)Lu7;

    move-result-object v1

    invoke-virtual {v1}, Lu7;->m()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lz9;->h(Lz9;Z)V

    return-void
.end method
