.class Lb4$b;
.super Landroidx/lifecycle/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final c:Landroidx/lifecycle/t$a;


# instance fields
.field private b:Lf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0<",
            "Lb4$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb4$b$a;

    invoke-direct {v0}, Lb4$b$a;-><init>()V

    sput-object v0, Lb4$b;->c:Landroidx/lifecycle/t$a;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/s;-><init>()V

    .line 2
    new-instance v0, Lf0;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Lf0;-><init>(I)V

    .line 4
    iput-object v0, p0, Lb4$b;->b:Lf0;

    return-void
.end method

.method static d(Landroidx/lifecycle/u;)Lb4$b;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/t;

    sget-object v1, Lb4$b;->c:Landroidx/lifecycle/t$a;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/u;Landroidx/lifecycle/t$a;)V

    const-class p0, Lb4$b;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/t;->a(Ljava/lang/Class;)Landroidx/lifecycle/s;

    move-result-object p0

    check-cast p0, Lb4$b;

    return-object p0
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb4$b;->b:Lf0;

    invoke-virtual {v0}, Lf0;->l()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb4$b;->b:Lf0;

    invoke-virtual {v0}, Lf0;->b()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lb4$b;->b:Lf0;

    invoke-virtual {v0, v1}, Lf0;->m(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb4$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lb4$b;->b:Lf0;

    invoke-virtual {p2}, Lf0;->l()I

    move-result p2

    if-lez p2, :cond_1

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Loaders:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p4, p0, Lb4$b;->b:Lf0;

    invoke-virtual {p4}, Lf0;->l()I

    move-result p4

    if-gtz p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p4, p0, Lb4$b;->b:Lf0;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lf0;->m(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb4$a;

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lb4$b;->b:Lf0;

    invoke-virtual {p1, v0}, Lf0;->i(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lb4$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mId="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " mArgs="

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLoader="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb4$b;->b:Lf0;

    invoke-virtual {v0}, Lf0;->l()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lb4$b;->b:Lf0;

    invoke-virtual {v2, v1}, Lf0;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb4$a;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
