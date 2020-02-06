---
title: Home Page
layout: default
toc: True
---

### Fish Facts (To Show How the Text Wraps around the Contents Block) {#cat-facts}

Fish are gill-bearing aquatic craniate animals that lack limbs with digits. They form a sister group to the tunicates, together forming the olfactores. Included in this definition are the living hagfish, lampreys, and cartilaginous and bony fish as well as various extinct related groups. Tetrapods emerged within lobe-finned fishes, so cladistically they are fish as well. However, traditionally fish are rendered paraphyletic by excluding the tetrapods (i.e., the amphibians, reptiles, birds and mammals which all descended from within the same ancestry). Because in this manner the term "fish" is defined negatively as a paraphyletic group, it is not considered a formal taxonomic grouping in systematic biology, unless it is used in the cladistic sense, including tetrapods.[1][2] The traditional term pisces (also ichthyes) is considered a typological, but not a phylogenetic classification.

The earliest organisms that can be classified as fish were soft-bodied chordates that first appeared during the Cambrian period. Although they lacked a true spine, they possessed notochords which allowed them to be more agile than their invertebrate counterparts. Fish would continue to evolve through the Paleozoic era, diversifying into a wide variety of forms. Many fish of the Paleozoic developed external armor that protected them from predators. The first fish with jaws appeared in the Silurian period, after which many (such as sharks) became formidable marine predators rather than just the prey of arthropods.

Most fish are ectothermic ("cold-blooded"), allowing their body temperatures to vary as ambient temperatures change, though some of the large active swimmers like white shark and tuna can hold a higher core temperature.[3][4]

Fish can communicate in their underwater environments through the use of acoustic communication. Acoustic communication in fish involves the transmission of acoustic signals from one individual of a species to another. The production of sounds as a means of communication among fish is most often used in the context of feeding, aggression or courtship behaviour.[5] The sounds emitted by fish can vary depending on the species and stimulus involved. They can produce either stridulatory sounds by moving components of the skeletal system, or can produce non-stridulatory sounds by manipulating specialized organs such as the swimbladder.[6]

Fish are abundant in most bodies of water. They can be found in nearly all aquatic environments, from high mountain streams (e.g., char and gudgeon) to the abyssal and even hadal depths of the deepest oceans (e.g., gulpers and anglerfish), although no species has yet been documented in the deepest 25% of the ocean. With 33,600 described species, fish exhibit greater species diversity than any other group of vertebrates.[7][8]

Fish are an important resource for humans worldwide, especially as food. Commercial and subsistence fishers hunt fish in wild fisheries (see fishing) or farm them in ponds or in cages in the ocean (see aquaculture). They are also caught by recreational fishers, kept as pets, raised by fishkeepers, and exhibited in public aquaria. Fish have had a role in culture through the ages, serving as deities, religious symbols, and as the subjects of art, books and movies.

Figure 1 is a picture of a fish to show how to insert an image using markdown.

{% include img.html img="fish.jpg" caption="Figure 1: glub blub blub" %}



### Jekyll Site Variables

Now can use variables directly based on the ImplementationGuide Resource since the resource is represented in Jekyll as a [Jekyll Data File](https://jekyllrb.com/docs/datafiles/).  The are the (old) site variables defined [here](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation# Jekyll).
We can replace them directly with the data from the ImplementationGuide Resource:

**The following table summarizes the current and new way to access variables using {% raw %} {{liquid object syntax}} {% endraw %}.**

<div class="row">
<div class="col-sm-6" markdown="1" style="background-color: Lightcyan;">

**Currently accessed via data.fhir data file which is derived from both the configuration file ('ig.json') and the ImplementationGuide Resource**

- IG Package ID (defined in ig.json config file)- {% raw %}{{site.data.fhir.packageId}}{% endraw %} = {{site.data.fhir.packageId}}

-  IG Business version specification (defined in ig.json)- {% raw %}{{site.data.fhir.ig.version}} {% endraw %} = {{site.data.fhir.ig.version}}

- IG status (defined in ig.xml)- {% raw %}{{site.data.fhir.ig.status}} {% endraw %} = {{site.data.fhir.ig.status}}

- Whether is experimental IG (defined in ig.xml) - {% raw %}{{site.data.fhir.ig.experimental}} {% endraw %} = {{site.data.fhir.ig.experimental}}

- IG Publisher name (defined in ig.xml) - {% raw %}{{site.data.fhir.ig.publisher}} {% endraw %} = {{site.data.fhir.ig.publisher}}

- dependency url - e.g. "uscore" : Base url of a dependency implementation Guide (defined in ig.json) -  {% raw %} {{site.data.fhir.uscore}} {% endraw %}= {{site.data.fhir.uscore}}

     - link to {{site.data.fhir.uscore}} in markdown is  {% raw %}\[{{site.data.fhir.uscore}}\]({{site.data.fhir.uscore}}){% endraw %} = [{{site.data.fhir.uscore}}]({{site.data.fhir.uscore}})

     - current link to {{site.data.fhir.uscore}} home in markdown is  {% raw %}\[{{site.data.fhir.uscore}}index.html\]({{site.data.fhir.uscore}}index.html){% endraw %} = [{{site.data.fhir.uscore}}index.html]({{site.data.fhir.uscore}}index.html)


- ig Name : computer friendly name of the implementation Guide - used as human friendly name in STU3 (defined in ig.xml) -  {% raw %} {{site.data.fhir.ig.name}} {% endraw %}= {{site.data.fhir.ig.name}}

- ig Title : human friendly name of the implementation Guide - R4 and above (defined in ig.xml) -  {% raw %} {{site.data.fhir.ig.title}} {% endraw %}= {{site.data.fhir.ig.title}}

-  path : path to the main FHIR specification (defined in ig.json)-  {% raw %} {{site.data.fhir.path}} {% endraw %}= {{site.data.fhir.path}}

     - link to {{site.data.fhir.path}} in markdown is  {% raw %}\[{{site.data.fhir.path}}index.html\]({{site.data.fhir.path}}index.html){% endraw %} = [{{site.data.fhir.path}}index.html]({{site.data.fhir.path}}index.html)

-  canonical : canonical path to this specification (defined in ig.json)-  {% raw %} {{site.data.fhir.canonical}} {% endraw %} = {{site.data.fhir.canonical}}

    -  link to {{site.data.fhir.canonical}} in markdown is  {% raw %}\[{{site.data.fhir.canonical}}\]({{site.data.fhir.canonical}}){% endraw %} = [{{site.data.fhir.canonical}}]({{site.data.fhir.canonical}})

-  errorCount : number of errors in the build file (not including HTML validation errors) -  {% raw %} {{site.data.fhir.errorCount}} {% endraw %} = {{site.data.fhir.errorCount}}

-  version : version of FHIR -  {% raw %} {{site.data.fhir.version}} {% endraw %} = {{site.data.fhir.version}}

-  revision : revision of FHIR -  {% raw %} {{site.data.fhir.revision}} {% endraw %} = {{site.data.fhir.revision}}

-  versionFull : version-revision -  {% raw %} {{site.data.fhir.versionFull}} {% endraw %} = {{site.data.fhir.versionFull}}

-  totalFiles : total number of files found by the build -  {% raw %} {{site.data.fhir.totalFiles}} {% endraw %} = {{site.data.fhir.totalFiles}}

-  processedFiles : number of files genrated by the build -  {% raw %} {{site.data.fhir.processedFiles}} {% endraw %} = {{site.data.fhir.processedFiles}}

-  genDate : date of generation (so date stamps in the pages can match those in the conformance resources) -  {% raw %} {{site.data.fhir.genDate}} {% endraw %} = {{site.data.fhir.genDate}}

----

</div>
<div class="col-sm-6" markdown = "1" style="background-color: WhiteSmoke;">

**New Way accessed directly from the ImplementationGuide Resource which represented as the ig.fhir data file in the Jekyll build**

- IG Package ID - {% raw %}{{site.data.ig.packageId}}{% endraw %} = {{site.data.ig.packageId}}

-  IG Business version specification- {% raw %}{{site.data.ig.version}} {% endraw %} = {{site.data.ig.version}}

- IG status - {% raw %}{{site.dat.ig.status}} {% endraw %} = {{site.data.ig.status}}

- Whether is experimental IG - {% raw %}{{site.ig.experimental}} {% endraw %} = {{site.ig.experimental}}

- IG Publisher name  - {% raw %}{{site.data.ig.publisher}} {% endraw %} = {{site.data.ig.publisher}}

- dependency url - e.g. "uscore" : Base url of a dependency implementation Guide  -  {% raw %}{% assign var = site.data.ig.dependsOn \| where: "id", "uscore" %}{{ var[0].uri }}{% endraw %}= {% assign var = site.data.ig.dependsOn | where: "id", "uscore" %}{{ var[0].uri }}

     - link to {{ var[0].uri }} in markdown is  {% raw %}\[{{ var[0].uri }}\]({{ var[0].uri }}){% endraw %} = [{{ var[0].uri }}]({{ var[0].uri }})

     - current link to {{ var[0].uri }} home in markdown is  {% raw %}\[{{{ var[0].uri }}index.html\]({{ var[0].uri }}/index.html){% endraw %} = [{{ var[0].uri }}index.html]({{ var[0].uri }}/index.html)


- ig Name : computer friendly name of the implementation Guide(used as human friendly name STU3) -  {% raw %} {{site.data.ig.name}} {% endraw %}= {{site.data.ig.name}}

- ig Title : human friendly name of the implementation Guide - R4 and above  -  {% raw %} {{site.data.ig.title}} {% endraw %}= {{site.data.ig.title}}

-  *this is still the best way* path : path to the main FHIR specification-  {% raw %} {{site.data.fhir.path}} {% endraw %}= {{site.data.fhir.path}}

     - link to {{site.data.fhir.path}} in markdown is  {% raw %}\[{{site.data.fhir.path}}index.html\]({{site.data.fhir.path}}index.html){% endraw %} = [{{site.data.fhir.path}}index.html]({{site.data.fhir.path}}index.html)

-  *this is still the best way* canonical : canonical path to this specification -  {% raw %} {{site.data.fhir.canonical}} {% endraw %} = {{site.data.fhir.canonical}}

    -  link to {{site.data.fhir.canonical}} in markdown is  {% raw %}\[{{site.data.fhir.canonical}}\]({{site.data.fhir.canonical}}){% endraw %} = [{{site.data.fhir.canonical}}]({{site.data.fhir.canonical}})

-  *this is still the only way* errorCount : number of errors in the build file (not including HTML validation errors) -  {% raw %} {{site.data.fhir.errorCount}} {% endraw %} = {{site.data.fhir.errorCount}}

-  version : version of FHIR -  {% raw %} {{site.data.ig.fhirVersion}} {% endraw %} = {{site.data.ig.fhirVersion}}

-  *this is still the only way* revision : revision of FHIR -  {% raw %} {{site.data.fhir.revision}} {% endraw %} = {{site.data.fhir.revision}}

-  *this is still the only way* versionFull : version-revision -  {% raw %} {{site.data.fhir.versionFull}} {% endraw %} = {{site.data.fhir.versionFull}}

-  *this is still the only way* totalFiles : total number of files found by the build -  {% raw %} {{site.data.fhir.totalFiles}} {% endraw %} = {{site.data.fhir.totalFiles}}

-  *this is still the only way* processedFiles : number of files genrated by the build -  {% raw %} {{site.data.fhir.processedFiles}} {% endraw %} = {{site.data.fhir.processedFiles}}

-  *this is still the only way* genDate : date of generation (so date stamps in the pages can match those in the conformance resources) -  {% raw %} {{site.data.fhir.genDate}} {% endraw %} = {{site.data.fhir.genDate}}

---

</div>

</div>



### Introduction

blah blah blah

### More Stuff

and more stuff

#### And More Stuff

add link list to bottom of each page....
<!-- {% raw %}>{% include link-list.md %} {% endraw %}-->

{% include link-list.md %}
