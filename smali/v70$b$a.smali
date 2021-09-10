.class Lv70$b$a;
.super Lv70$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv70$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv70<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lv70$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lv70$b;->b:Lv70;

    invoke-direct {p0, p1}, Lv70$d;-><init>(Lv70;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv70$d;->a()Lv70$e;

    move-result-object v0

    return-object v0
.end method
