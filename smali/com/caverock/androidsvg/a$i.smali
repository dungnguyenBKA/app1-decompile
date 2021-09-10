.class Lcom/caverock/androidsvg/a$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# static fields
.field private static synthetic e:[I


# instance fields
.field public a:Lcom/caverock/androidsvg/a$d;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/a$d;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/a$i;->a:Lcom/caverock/androidsvg/a$d;

    .line 3
    iput-object v0, p0, Lcom/caverock/androidsvg/a$i;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/caverock/androidsvg/a$d;->b:Lcom/caverock/androidsvg/a$d;

    :goto_0
    iput-object p1, p0, Lcom/caverock/androidsvg/a$i;->a:Lcom/caverock/androidsvg/a$d;

    .line 7
    iput-object p2, p0, Lcom/caverock/androidsvg/a$i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/caverock/androidsvg/a$b;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    new-instance v1, Lcom/caverock/androidsvg/a$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/caverock/androidsvg/a$a;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/a$b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/caverock/androidsvg/a$i;->a:Lcom/caverock/androidsvg/a$d;

    sget-object v2, Lcom/caverock/androidsvg/a$d;->c:Lcom/caverock/androidsvg/a$d;

    if-ne v1, v2, :cond_0

    const-string v1, "> "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/a$d;->d:Lcom/caverock/androidsvg/a$d;

    if-ne v1, v2, :cond_1

    const-string v1, "+ "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/a$i;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "*"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/a$a;

    const/16 v3, 0x5b

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/caverock/androidsvg/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v3, Lcom/caverock/androidsvg/a$i;->e:[I

    const/4 v4, 0x4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/caverock/androidsvg/a$b;->values()[Lcom/caverock/androidsvg/a$b;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/caverock/androidsvg/a$i;->e:[I

    .line 11
    :goto_2
    iget-object v5, v2, Lcom/caverock/androidsvg/a$a;->b:Lcom/caverock/androidsvg/a$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    if-eq v3, v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "|="

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/caverock/androidsvg/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v3, "~="

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/caverock/androidsvg/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v3, 0x3d

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/caverock/androidsvg/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v2, 0x5d

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x3a

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 19
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method
