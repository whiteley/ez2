The ec2-api-tools are great but I've always wished they were faster. I made a wrapper to speed things up with [Repl](https://github.com/defunkt/repl) and [Nailgun](http://www.martiansoftware.com/nailgun/). You can install everything (including the ec2-api-tools themselves) with [Homebrew](http://mxcl.github.com/homebrew/) after enabling my tap.

    $ brew tap whiteley/tap
    Cloning into '/usr/local/Library/Taps/whiteley-tap'...
    remote: Counting objects: 3, done.
    remote: Compressing objects: 100% (2/2), done.
    remote: Total 3 (delta 0), reused 3 (delta 0)
    Unpacking objects: 100% (3/3), done.
    Tapped 1 formula

    $ brew install --HEAD ez2
    ==> Cloning https://github.com/whiteley/ez2.git
    Cloning into '/Users/mattwhiteley/Library/Caches/Homebrew/ez2--git'...
    remote: Counting objects: 10, done.
    remote: Compressing objects: 100% (5/5), done.
    remote: Total 10 (delta 0), reused 10 (delta 0)
    Unpacking objects: 100% (10/10), done.
    ==> Checking out branch master
    /usr/local/Cellar/ez2/HEAD: 4 files, 20K, built in 2 seconds

    $ ez2
    ez2>> ec2-describe-regions
    REGION  eu-west-1   ec2.eu-west-1.amazonaws.com
    REGION  sa-east-1   ec2.sa-east-1.amazonaws.com
    REGION  us-east-1   ec2.us-east-1.amazonaws.com
    REGION  ap-northeast-1  ec2.ap-northeast-1.amazonaws.com
    REGION  us-west-2   ec2.us-west-2.amazonaws.com
    REGION  us-west-1   ec2.us-west-1.amazonaws.com
    REGION  ap-southeast-1  ec2.ap-southeast-1.amazonaws.com
    ez2>> describe-availability-zones
    AVAILABILITYZONE    us-west-2a  available   us-west-2
    AVAILABILITYZONE    us-west-2b  available   us-west-2
    AVAILABILITYZONE    us-west-2c  available   us-west-2
    ez2>> ^D

    $

