.class Landroidx/lifecycle/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/f$b;

.field b:Landroidx/lifecycle/g;


# direct methods
.method constructor <init>(Landroidx/lifecycle/h;Landroidx/lifecycle/f$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/l;->d(Ljava/lang/Object;)Landroidx/lifecycle/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/j$a;->b:Landroidx/lifecycle/g;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/lifecycle/j;->e(Landroidx/lifecycle/f$a;)Landroidx/lifecycle/f$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/j$a;->b:Landroidx/lifecycle/g;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/i;Landroidx/lifecycle/f$a;)V

    .line 4
    iput-object v0, p0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$b;

    return-void
.end method
