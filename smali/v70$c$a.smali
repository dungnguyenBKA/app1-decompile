.class Lv70$c$a;
.super Lv70$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv70$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv70<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lv70$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lv70$c;->b:Lv70;

    invoke-direct {p0, p1}, Lv70$d;-><init>(Lv70;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv70$d;->a()Lv70$e;

    move-result-object v0

    iget-object v0, v0, Lv70$e;->g:Ljava/lang/Object;

    return-object v0
.end method
