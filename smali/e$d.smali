.class Le$d;
.super Le$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ls4;


# direct methods
.method constructor <init>(Ls4;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le$g;-><init>(Le$a;)V

    .line 2
    iput-object p1, p0, Le$d;->a:Ls4;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le$d;->a:Ls4;

    invoke-virtual {v0}, Ls4;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le$d;->a:Ls4;

    invoke-virtual {v0}, Ls4;->stop()V

    return-void
.end method
