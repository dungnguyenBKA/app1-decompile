.class public final synthetic Lvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyp;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyp;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp;->b:Lyp;

    iput-object p2, p0, Lvp;->c:Ljava/io/File;

    iput-object p3, p0, Lvp;->d:Ljava/io/File;

    iput-object p4, p0, Lvp;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvp;->b:Lyp;

    iget-object v1, p0, Lvp;->c:Ljava/io/File;

    iget-object v2, p0, Lvp;->d:Ljava/io/File;

    iget-object v3, p0, Lvp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lyp;->L(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
